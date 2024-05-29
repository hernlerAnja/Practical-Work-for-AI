
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
        
        load "data/2FDB.pdb", protein
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
 
        load "data/2FDB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5143,1335,1345,1350,5157,5158,5148,5151,1348,1349,1359,1363,4584,5137,5146,5139,5141,1709,4605,5166,5168,4602,1318,1342,1343,1344,1305,1353,1362,795,798,233,234,816,1066,1067,1068,1095,1044,1042,1256,1252,1253,1255,954,817,231,1306,1307,229,1276,1278,238,1274,1251,1249,955,2686,1045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3714,3715,2895,3963,2600,2602,2603,2601,3968,3969,3452,1979,2582,3456,3962,2588,2592,2593,2596,3964,3967,3937,3921,3922,3924,3972,3978,3918,3970,3926,3981,3881,3982,3459,3742,3477,3475,3478,2892,2894,3713,2890,3903,2877,3901,17,18,2586,2576,2579,2584,2585,2570,3447,3689,3691] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2510,2614,2617,2618,2619,2631,2633,2050,2596,4313,2603,2601,3968,3969,3984,3985,3986,4295,4310,4226,4228,3970,4260,4294,4296,2049,4233,4234,4242,4231,3982] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1363,1670,1671,1651,1350,5151,1351,5156,4869,5064,5065,1686,1701,1704,5169,5172,5173,5174,1619,1617,1687,4654,5190,5192] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4533,3949,3952,3955,3950,3951,4530,4538,4541,1968,1970,1974,3466,1996,3465,3467,1949] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1936,4574,4571,4572,1330,1331,1929,1933,805,804,806,1336,1932,4601,4554,4765,4570] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [188,1120,183,186,1119,165,172,2342,175,1122,1123,1124,2177,168,169,2383,757,2174,167,2191,2343,2168,2347,2352,2354,2172,1143] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [787,1958,3448,3449,3450,3451,770,2564,2572,5119,5127,5129,5121,4563,3426,3431,3428] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2576,43,2584,2585,42,13,15,18,2586,69,2570,2556,2564,484,483] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [5125,2729,2730,2711,3141,3148,3149,5111,2708,5140,5119,5118,5131] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        