from orders.models import Order as order_model


class OrderRecord(object):
	record = dict()

	def __init__(self, record):
		for key, value in record:
			pass