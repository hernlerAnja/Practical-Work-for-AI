
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
        
        load "data/6PXN.pdb", protein
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
 
        load "data/6PXN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [198,4992,4998,5001,5072,5254,5010,5071,5073,5285,5287,6824,7082,7083,6839,7102,7100,5988,6001,6019,6032,6792,6793,6874,218,6076,6124,6827,196,6825,6826,6828,4975,219,220,221,222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2136,4932,336,337,4934,1249,1276,1294,1298,1299,1250,1263,516,1281,549,256,262,265,267,274,4953,1386,2089,4955,4956,4957,4958,1385,4954,2101,2345,2361,2344,1300,2362,2364,793,2358,2087,2088,2090,1338,2086] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [6890,6906,6981,9363,6929,6932,6,15,9361,9384,9386,1,2,5,6982,6983,6993,9385,9290,19,6136,167,6063,6064,146] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4755,4903,4742,4881,4882,4743,4745,4751,1326,2168,2194,1325,2153,4704,4706,2244,2245,4729,2152,2243] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [294,566,597,601,602,322,325,312,318,357,220,222,567,359,1167,1169,6171,6172,6218,6175,6173,6174,6230,6229,6214,6217] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5339,5905,5907,5335,5030,5304,1434,1435,1436,5061,5095,5048] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1128,1129,1133,1163,9416,9431,9432,9414,1166,64,171,21,6185,569,570,1200] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5904,1447,5885,4757,4800,5938,4773,5307,5901,5308,5866,5867,4907,4758] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3421,2842,2840,2075,2090,2863,2864,1371,1370,1372,3274,3272] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        