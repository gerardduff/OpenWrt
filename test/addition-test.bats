#!./test/libs/bats/bin/bats

load 'libs/bats-support/load'
load 'libs/bats-assert/load'

@test "Should add numbers together" {
#	result="$(echo 1+1 | bc)"
#	[ "$result" -eq 4 ]
	assert_equal $(echo 1+1 | bc) 2
}
