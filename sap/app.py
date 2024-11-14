from flask import Flask, render_template
import os

app = Flask(__name__)

TEMPLATES_DIR = "templates"

def get_html_files():
    return [f for f in os.listdir(TEMPLATES_DIR) if f.endswith('.html')]

@app.route('/')
def index():
    html_files = get_html_files()
    return render_template('index.html', html_files=html_files)

@app.route('/<filename>')
def render_file(filename):
    if filename.endswith('.html') and os.path.exists(os.path.join(TEMPLATES_DIR, filename)):
        return render_template(filename)
    else:
        return "File not found", 404

if __name__ == '__main__':
    app.run(debug=True)
