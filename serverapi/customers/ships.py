# -*- coding: utf-8 -*-

import json

from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth.decorators import login_required

from util.response_util import *
from models import *


def ships(request):
	if request.method == 'POST':
		return post_ships(request)
	elif request.method == 'GET':
		pass


@login_required
def post_ships(request):
	ship_data = json.loads(request.body)
	dormitory_no = ship_data.get('dormitory_no', 0)
	room_no = ship_data.get('room_no', 0)
	address = ship_data.get('address', u'无')

	ship_info = Ship()
	ship_info.customer_id = Customer.objects.get(id=request.user.id)
	ship_info.dormitory_no = dormitory_no
	ship_info.room_no = room_no
	ship_info.address = address
	ship_info.save()

	content = dict()
	content['status'] = 201
	content['msg'] = u'操作成功'
	return create_simple_response(201, json.dumps(content))