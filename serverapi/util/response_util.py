from django.http import HttpResponse

BASE_SCHEMES = r'http://'
BASE_PATH = r'api.byway.net.cn/v1/'
API_BASE = r'api.byway.net.cn'
# BASE_PATH = r'115.159.208.167/v1/'


def create_simple_response(code, content):
	response = HttpResponse()
	response['Access-Control-Allow-Origin'] = 'null'
	response['Access-Control-Allow-Credentials'] = 'true'
	response['Access-Control-Allow-Methods'] = 'GET, POST, PATCH, PUT, DELETE'
	response.status_code = code
	response.content = content
	return response
