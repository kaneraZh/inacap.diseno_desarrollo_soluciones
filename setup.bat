python -m venv .venv
.\venv\Scripts\activate.bat
python.exe -m pip install --upgrade pip
pip install django
pip install pillow
python .\manage migrate