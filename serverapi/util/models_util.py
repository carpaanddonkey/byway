# -*- coding: utf-8 -*-
import json

from orders.models import *


class OrderUtils(object):

	def get_order_by_canteen(self, canteen_id, status=None):
		if status is None:
			return Order.objects.filter(canteen_id=canteen_id)
		else:
			return Order.objects.filter(canteen_id=canteen_id, status=status)

	def get_order_by_window(self, window_id, status=None):
		if status is None:
			return Order.objects.filter(window_id=window_id)
		else:
			return Order.objects.filter(window_id=window_id, status=status)

	def get_order_by_deliver(self, canteen_id, status):
		return Order.objects.filter(canteen_id=canteen_id, status=status)

	def get_order_by_customer(self, customer_id, is_finished=True):
		if is_finished:
			return Order.objects.filter(customer_id=Customer.objects.get(id=customer_id), status=ORDER_COMPLETED)
		else:
			return Order.objects.filter(customer_id=Customer.objects.get(id=customer_id), status__lt=ORDER_COMPLETED)

	def orders_to_array(self, order_list):
		order_arr = []
		for order in order_list:
			order_arr.append(order.to_dict())
		return order_arr