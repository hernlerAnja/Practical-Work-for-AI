
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
        
        load "data/3HUB.pdb", protein
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
 
        load "data/3HUB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1327,1328,543,655,657,833,1325,1326,371,1246,831,578,579,656,1344,253,254,255,256,257,258,259,260,228,230,232,231,852,856,865,866,867,850,860,861,862,863,837,1334,541,542,1333,1332,387,814,815,816,820,823,827,822,370,383,669,278,229,277,818,385,869,873] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1469,1464,1466,1467,1484,1448,1449,1747,1917,1421,1422,1423,1425,1415,1483,1491,2211,2215,2216,1492,1502,1508,2224,1414,1748,1745,1824,1954,1956,1885,1872,1873,1944,1946,1914,1941,1823,2200,2201,2202,1825,2198,1851,1849,1850,2209,2223,1781,1780] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [618,619,665,608,616,2686,2687,1310,841,843,677,659,660,662,664,658,602,612,627] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [151,152,22,23,704,707,39,41,11,689,694,697,2664,2660,2639,2641,684,685,169,171,2680,2681] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2254,2257,2259,2258,2260,1509,1514,1525,2265,2269,1130,1126,1128,1124,1125,1132,1517,1098,1100,1133,1136] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1040,1076,1042,1077,1050,1014,1016,2356,634,641,642,1078,2400,1052,1290,1292,2352] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        