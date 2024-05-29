
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6R3S.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6R3S.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1416,1419,1288,815,1408,1409,1413,1414,1415,1407,298,1279,898,260,263,2818,2819,299,583,1437,1423,658,660,836,839,1303,2820,659,1304,865,866,867,812,814,810,809,425,832,819,1280,552,553,554,440,442,265,279,280] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1547,1560,1561,1275,1549,1775,952,1276,1280,882,884,885,887,917,920,921,1264,1265,1266,1523,1524,1525,1548,1819,953] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3631,3614,3615,3616,3617,5070,5080,5072,25,3947,3946,5079,5031,5034,5029,5030,5010,3931,3933,3929,3923,3942,5057] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4190,4231,4232,4233,4538,4539,4541,4531,4532,4540,2946,4257,2910,2913,4182,2928,2929,2930,2941,2943,4179] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2880,4224,4223,4171,4180,4176,4194,4168,2908,4182,4184,3412,3426,3427,3428,3734,3458,2897,4166,4167,3724,2881,2884,3429,4187] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3752,3754,1480,1481,1479,2883,1241,3743,543,1204,1206,1215,1220,1221,1652,2898,1197,1209,574,2878] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1029,1791,1028,1030,2644,2646,2430,2674,2415,2416,2386,2385,1060,1026,1050,1051,1027,2690] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1249,1250,1570,1571,1522,1236,1451,1657,1659,1450,1489,1492,1491,1506,1452,1248,1898,1886,1879,1599,1601,1568,1569] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2101,2104,1590,1591,1667,2137,2530,2082,1627,2138,1624,1628,2125,2126,2538,2529,2523,2100,1642] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        