# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
thresh { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
inputMin { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
inputMax { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
outputMin { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
outputMax { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


