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
		return get_ships(request)


@login_required
def post_ships(request):
	ship_data = json.loads(request.body)
	receiver_name = ship_data.get('receiver_name', '无')
	phone = ship_data.get('phone', '')
	dormitory_no = ship_data.get('dormitory_no', 0)
	room_no = ship_data.get('room_no', 0)
	address = ship_data.get('address', u'无')

	# support del
	is_del = ship_data.get('is_del', 0)

	if is_del == 0:
		ship_info = Ship()
		ship_info.customer_id = Customer.objects.get(id=request.user.id)
		ship_info.receiver_name = receiver_name
		ship_info.phone = phone
		ship_info.dormitory_no = dormitory_no
		ship_info.room_no = room_no
		ship_info.address = address
		ship_info.save()
	else:
		ship_id = ship_data.get('address_id')
		Ship.objects.get(id=ship_id).delete()

	content = dict()
	content['status'] = 201
	content['msg'] = u'操作成功'
	return create_simple_response(201, json.dumps(content))


@login_required
def get_ships(request):
	ship_list = Ship.objects.filter(customer_id=Customer.objects.get(id=request.user.id))
	ship_items = [x.to_dict() for x in ship_list]
	return create_simple_response(200, json.dumps(ship_items))