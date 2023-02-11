// #![no_std]
// #![no_main]

fn main() {
    let mut ai: i64 = 1;
    let mut aj: i64 = 1;
    let mut ak: i64;
    for i in 3..90 {
        ak = ai + aj;
        println!("a{} = {}", i, ak);
        ai = aj;
        aj = ak;
    }
}
