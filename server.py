import logging
import subprocess
import os
from flask import Flask, request, send_file, jsonify

app = Flask(__name__)

logging.basicConfig(level=logging.DEBUG)

@app.route('/screenshot', methods=['GET'])
def take_screenshot():
    screenshot_path = "/Users/mishavac/Desktop/screenshot.png"
    result = subprocess.run(["screencapture", "-x", screenshot_path], capture_output=True, text=True)
    
    if result.returncode != 0:
        logging.error(f"Error taking screenshot: {result.stderr}")
        return "Screenshot failed", 500
    
    if os.path.exists(screenshot_path):
        return send_file(screenshot_path, mimetype='image/png')
    else:
        logging.error(f"Screenshot file not found at path: {screenshot_path}")
        return "Screenshot file not found", 500

@app.route('/execute_command', methods=['POST'])
def execute_command():
    data = request.get_json()
    command = data.get('command', '')

    if command:
        os.system(command)
        return jsonify({"message": f"Command '{command}' executed"}), 200
    else:
        return jsonify({"message": "No command provided"}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
