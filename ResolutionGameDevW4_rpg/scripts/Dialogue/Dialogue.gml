function create_dialog(_messages){
	if (instance_exists(oDialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, oDialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

help_dialog = [
{
msg: "Use WASD to move. Press SPACE to interact/attack."
},
{
	msg: " Collect 3+ keys to enter your house to rest and regain battery!"
}
]