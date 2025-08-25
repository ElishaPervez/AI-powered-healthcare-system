import os
import sys

# Add the project root to the sys.path if it's not already there
# This allows 'src' to be imported as a package when main.py is run directly
project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), os.pardir))
if project_root not in sys.path:
    sys.path.insert(0, project_root)

from src import create_app

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)