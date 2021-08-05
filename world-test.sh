#!/bin/bash

./world.sh > /tmp/$$-result

echo "hello" > /tmp/$$-ans
echo "world" >> /tmp/$$-ans

diff /tmp/$$-result /tmp/$$-ans && echo "OK" || echo "NG"

rm /tmp/$$-*
