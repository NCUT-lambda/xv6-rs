use std::{
    fs::{read_dir, File},
    io::Write,
};

static TARGET_PATH: &str = "../user/target/riscv64gc-unknown-none-elf/release/";
static APP_PATH: &str = "../user/src/bin/";
static LINK_APP: &str = "src/link_app.S";

fn main() {
    println!("[build.rs] creating link_app.S");

    // read all user applications
    let mut apps: Vec<_> = read_dir(APP_PATH)
        .unwrap()
        .map(|dir_entry| {
            let mut name_with_ext = dir_entry.unwrap().file_name().into_string().unwrap();
            name_with_ext.drain(name_with_ext.find(".").unwrap()..name_with_ext.len());
            name_with_ext
        })
        .collect();
    apps.sort();

    // writing link_app.S
    let mut f = File::create(LINK_APP).unwrap();
    writeln!(
        f,
        "
	.align 4
	.section .data
	.global _app_num
_app_num:
	.quad {}",
        apps.len()
    )
    .unwrap();

    for i in 0..apps.len() {
        writeln!(f, "	.quad app{}_start", i).unwrap();
    }
    writeln!(f, "	.quad app{}_end", apps.len() - 1).unwrap();

    for i in 0..apps.len() {
        writeln!(
            f,
            "
	.section .data
	.global app{0}_start
	.global app{0}_end
app{0}_start:
	.incbin \"{2}{1}\"
app{0}_end:",
            i, apps[i], TARGET_PATH
        )
        .unwrap();
    }
}
