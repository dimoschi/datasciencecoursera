def get(a, b):
    try:
        int(a)
	int(b)
    except:
	print "Enter numbers asshole"

return a, b

def add(a,b):
    get(a, b)
    return a+b

def multi(a,b):
    get(a, b)
    return a*b
