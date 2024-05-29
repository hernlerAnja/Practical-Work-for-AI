
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
        
        load "data/1GAG.pdb", protein
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
 
        load "data/1GAG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [234,373,374,375,232,196,183,189,195,184,216,217,717,718,1173,1202,767,1201,376,372,512,483,485,511,211,213,380,360,177,178,180,181,233,741,740,722,736,739,608,768,769,793,760,1151,1285,1286,1308,1187,2412,2411,2413,203,204,199,2376,2385,2389,474,475,476,212,214,215,448,1174,1176,2382,2373,2374,2379,2381,2384,1457,2410,2409,1459,2390,435] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1228,1232,2251,2264,2265,2250,2252,1015,1249,2247,2248,1236,1235,1237,986,988,985,987,583,585,2298,2299,595] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [577,582,584,726,1265,1266,1214,1224,1248,725,731,1222,727,723,1230,1231,1232,1223] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1208,1236,1237,1238,1239,1240,994,996,958,959,803,961,963,907,962] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [491,517,519,522,484,494,486,546,647,52,547,645,646,660,688,687] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1453,1434,1435,1447,1450,435,436,437,1141,1414,1309,1456,1457,1458,1307,466,468,469,472,473,474,475,432,430,434,1325,1308] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1718,1726,2000,979,2001,1001,2023,1688,966,967,968] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [566,569,576,2296,2356,571,2306,2307,2343,2342] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        