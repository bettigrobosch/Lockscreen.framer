
pager = new PageComponent 
	width: Screen.width
	height: Screen.height
	scrollVertical: false
	

pager.addPage Pin

codeRight = "9151210"
codeInput = ""
pager.snapToPage Pin, false

#Variable for the displayC
a=0


Ovals = [Oval_1,Oval_2,Oval_3,Oval_4,Oval_5,Oval_6,Oval_7,Oval_8,Oval_9,Oval_10]

for Oval in Ovals
	Oval.opacity= 0.6

	Oval.onTapStart ->
		this.opacity= 0.8
		a++
		#print a

	Oval.onTapEnd ->
		this.opacity= 0.6
		for i in [0..a]
			displayC[i].opacity= 1
			
		codeInput += this.id
		#print codeInput
		
		if codeInput == codeRight
			pager.addPage Homescreen
			pager.snapToPage(Homescreen, false)
			a=0
			
		if codeInput.length == 8
			codeInput = ""
			a=0
			lastOval()
displayC = [1,Pin1,Pin2,Pin3,Pin4]

for Oval in displayC
	Oval.opacity= 0
	
	
lastOval = ->
	displayC[4].opacity=1
	a=0
	Utils.delay 5 #Eingabe
	killOvals()
	
killOvals = ->
	
	for i in [0...5]
		displayC[i].opacity=0
		