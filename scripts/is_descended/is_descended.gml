///@param child_obj_ind
///@param ancestor_obj_ind
{
var ch = argument0;
var an = argument1;

var pr = object_get_parent(ch);

if(an == pr){
	return true;
}else if(pr != -100 and pr != -1){
	return is_descended(pr,an);
}else {
	return false;
}
}