package lib

import (
	"testing"

	"gotest.tools/assert"
)

func foo_test(t *testing.T) {
	assert.Equal(t, Foo("haha"), "*haha*")
}
