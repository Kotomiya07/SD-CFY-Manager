git clone https://github.com/comfyanonymous/SD-CFY
cd SD-CFY/custom_nodes
git clone https://github.com/Kotomiya07/SD-CFY-Manager
cd ..
python -m venv venv
source venv/bin/activate
python -m pip install -r requirements.txt
python -m pip install -r custom_nodes/SD-CFY-Manager/requirements.txt
python -m pip install torchvision
cd ..
echo "#!/bin/bash" > run_gpu.sh
echo "cd SD-CFY" >> run_gpu.sh
echo "source venv/bin/activate" >> run_gpu.sh
echo "python main.py --preview-method auto" >> run_gpu.sh
chmod +x run_gpu.sh

echo "#!/bin/bash" > run_cpu.sh
echo "cd SD-CFY" >> run_cpu.sh
echo "source venv/bin/activate" >> run_cpu.sh
echo "python main.py --preview-method auto --cpu" >> run_cpu.sh
chmod +x run_cpu.sh
