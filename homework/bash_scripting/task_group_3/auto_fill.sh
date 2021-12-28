for ((i=151;i<172;i++)); do printf "#!/bin/bash\n\nsource task_functions.sh\n\ntask_$i \$@" > task_$i.sh; done
