srun \
  --container-image=/netscratch/enroot/ubuntu+20.04.sqsh \
  --container-workdir="`pwd`" \
  --container-mounts=/netscratch/$USER:/netscratch/$USER,/ds:/ds:ro,"`pwd`":"`pwd`" \
  --task-prolog="`pwd`/install.sh" \
  -p A100-IML \
  python getData.py