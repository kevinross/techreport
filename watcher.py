from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer
import time, os
from thread import start_new_thread
from copy import copy
wait = 2
count = copy(wait)
counting = False
def make_thread(arg):
	print 'Starting countdown...'
	global count, counting
	while count > 0:
		time.sleep(1)
		count -= 1
	counting = False
	count = copy(wait)
	print 'Making...'
	os.system('make')

class Maker(FileSystemEventHandler):
	def on_modified(self, event):
		if os.path.basename(event.src_path) != 'Report':
			return
		global counting, count
		if counting:
			print 'Delaying make due to changes'
			count = copy(wait)
			return
		counting = True
		start_new_thread(make_thread, (event,))

if __name__ == '__main__':
	handler = Maker()
	observer = Observer()
	observer.schedule(handler, path='.')
	observer.start()
	try:
		while True:
			time.sleep(1)
	except KeyboardInterrupt:
		observer.stop()
	observer.join()
