import os
import re

base_address = 0x80400000
limit = 0x20000
linker = 'src/linker.ld'

old = []
with open(linker, 'r') as f:
	old = f.readlines();

num = 0
for line in old:
	if line.find('BASE_ADDRESS') != -1:
		break
	num += 1

apps = os.listdir('src/bin')
apps.sort()

new = list(old)
for app in apps:
	app = app[:app.find('.')]
	os.system('cargo build --bin %s --release' % app)
	print('[build.py] application %s start with address %s' %(app, hex(base_address)))
	new[num] = new[num].replace(hex(base_address), hex(base_address + limit))
	base_address += limit
	with open(linker, 'w+') as f:
		f.writelines(new)

with open(linker, 'w+') as f:
	f.writelines(old)