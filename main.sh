srun \
  --container-image=/netscratch/enroot/python_3.10.sqsh \
  --container-workdir="`pwd`" \
  --container-mounts=/netscratch/$USER:/netscratch/$USER,/ds:/ds:ro,"`pwd`":"`pwd`" \
  -p A100-IML \
  --task-prolog="`pwd`/install.sh" \
  python getData.py