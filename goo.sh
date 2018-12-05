
#!/bin/bash

HIGH=240
while true; do
  HIGH=$[$HIGH-14]
  if [ "$HIGH" -lt 126 ]; then
    HIGH=226
  fi
  echo $HIGH
  play -n synth .2 sin 80
  play -n synth .2 sin 120
  play -n synth .2 sin ${HIGH}
  play -n synth .2 sin 120
  play -n synth .2 sin 80
  play -n synth .2 sin 120
  play -n synth .2 sin 60
  play -n synth .2 sin 120
done
