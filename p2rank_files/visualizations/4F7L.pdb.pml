
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
        
        load "data/4F7L.pdb", protein
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
 
        load "data/4F7L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [450,550,1376,1373,1382,1385,1386,1387,448,1388,307,245,250,578,809,810,811,446,808,305,306,248,256,1268,1269,1372,656,863,2681,835,895,2679,2680,655,806,807,654,433,805,815,832,828,1245,1244] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [538,539,543,547,578,1377,1378,1380,550,1376,1373,570,1135,1370,655,1369,647,1362,1363,1134,1178,606,577,579,1183,1191,1189,1195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1398,1245,880,881,883,1231,1232,908,1239,1240,1238,1241,878,873,875,1421,1423,1649,1693,948,949,950,1433,1435,1399,1422] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3436,3448,3434,3450,3449,3681,3796,3797,3433,3435,3442,4876,4898,4899,4889,3742,3761,4850,4853,4849,3750,3752,3122,3808,13,15,17] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4050,4051,4052,4088,4357,4351,4353,4358,4360,4362,2774,4039,4076,4077,2756,2771,2772,2757,4041,2738,4001] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1665,2291,2507,2505,992,993,994,995,2247,2535,2277,2276,2246,2235,1025,2551] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3419,3387,3389,3390,58,89,53,33,50,54,55,87,85,3381,3392,2962,2963,3413,3396,3414,3372] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2369,2378,2374,2375,2376,2332,2358,2364,2368,2370,1882,1930,1931,1899,1932,1934,1878,2158] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3089,3092,3085,3051,3083,3356,3316,3318,3405] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1465,1501,1516,1541,1517,1468,1540,2391,2399,2390,1998,1961,1962,1943,1987,1986,2400,2384] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        