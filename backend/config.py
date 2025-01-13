import os

PORT = os.environ.get("BACKEND_PORT", 8080)
HOST = os.environ.get("BACKEND_HOST", "0.0.0.0")
DB_NAME = os.environ.get("DB_NAME", "people")
DB_USER = os.environ.get("DB_USER", "admin")
DB_PASSWORD = os.environ.get("DB_PASSWORD", "password")
DB_PORT = os.environ.get("DB_PORT", '5432')
DB_HOST = os.environ.get("DB_HOST", "localhost")