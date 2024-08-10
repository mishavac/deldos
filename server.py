from flask import Flask, request, jsonify
import os


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
