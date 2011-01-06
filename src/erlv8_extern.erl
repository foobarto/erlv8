-module(erlv8_extern).
-export([get_pid_proto/1, get_ref_proto/1]).

get_pid_proto(VM) ->
	erlv8_vm:enqueue_tick(VM, {extern_proto, erlv8_vm:vm_resource(VM), pid}).

get_ref_proto(VM) ->
	erlv8_vm:enqueue_tick(VM, {extern_proto, erlv8_vm:vm_resource(VM), ref}).
