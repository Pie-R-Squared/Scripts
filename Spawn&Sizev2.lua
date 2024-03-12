if gg.isVisible() then
  gg.setVisible(false)
end

::MENU1::
menu = gg.choice({
  '✧ Size Hack',
  '✧ Spawn Hack',
  '⌠ End ⌡'
}, nil, 'Main Menu')

if menu == nil then goto END end
if menu == 1 then goto SIZE end
if menu == 2 then goto SPAWN end
if menu == 3 then goto END end

::SIZE::
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4.20389539e-44;2.29999995232', gg.TYPE_FLOAT)
gg.getResults(100)
newSize = gg.prompt({'Enter New Size:'}, {[1]='0.2'}, {'number'})
if newSize == nil then
    gg.toast('Cancelled')
else
    gg.editAll(newSize[1], gg.TYPE_FLOAT)
end
goto END

::SPAWN::
menu2 = gg.choice({
	'Activate Pet Button',
	'Spawn Stag Step 1',
	'Spawn Stag Step 2',
	'⌠ Back ⌡'
}, nil, '---------- Spawn Menu ----------')

if menu2 == nil then goto END end
if menu2 == 1 then
    gg.clearResults()
    gg.searchNumber(";Set_Button_Pet", gg.TYPE_WORD)
    gg.getResults(100)
    gg.editAll(";1", gg.TYPE_WORD)
    gg.clearResults()
    gg.toast('Rejoin Server')
    goto END
end
if menu2 == 2 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber(";kid tiger_new", gg.TYPE_WORD)
    gg.getResults(99999)
    gg.editAll(";STAG", gg.TYPE_WORD)
    gg.clearResults()
    goto END
end
if menu2 == 3 then
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("21.0F;1.95982601e18F;9.88935923e-22F;21.0F:29", gg.TYPE_FLOAT)
    gg.refineNumber("21.0F", gg.TYPE_FLOAT)
    t = gg.getResults(1)
    local Exp = {}
    Exp[1] = {}
    Exp[1].address = t[1].address
    Exp[1].flags = gg.TYPE_FLOAT
    Exp[1].value = 25000000000000
    gg.setValues(Exp)
    local Points = {}
    Points[1] = {}
    Points[1].address = t[1].address + 0x1C
    Points[1].flags = gg.TYPE_FLOAT
    Points[1].value = 4.7E50
    gg.setValues(Points)
    goto END
end
if menu2 == 4 then goto MENU1 end


::END::
gg.toast('Script Ended')
os.exit()
