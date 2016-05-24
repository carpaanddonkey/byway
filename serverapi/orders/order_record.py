from bson import json_util
import json
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login as auth_login

from models import *
from util.response_util import *


@login_required
def order_record(request, order_id=None):
	if request.method == 'GET':
		return get_order_record(request, order_id)


def get_order_record(request, order_id):
	content = {}
	if order_id is None:
		content['status'] = 406
		content['msg'] = 'error order id'
		return create_simple_response(406, json.dumps(content))

	order = Order.objects.get(id=order_id)
	order_rec = OrderRecord.objects.get(order_id=order)
	return create_simple_response(200, json.dumps(order_rec.to_dict()))