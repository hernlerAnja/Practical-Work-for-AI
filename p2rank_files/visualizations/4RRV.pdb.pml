
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
        
        load "data/4RRV.pdb", protein
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
 
        load "data/4RRV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [333,307,291,610,611,612,976,251,264,1481,885,904,226,1584,1529,227,229,230,332,243,1497,1526,579,1513,2545,2546,2555,2558,2560,2587,886,2327,2379,1530,2378,1573,1587,2345,2295,2296,2331,2892,252,2559,2561,2598,2264,2599,2883,887,888,889,891,893,890,892,265,271,290,292,839,2880] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2026,2076,2077,4527,2027,2029,4680,4681,4682,4718,4717,2075,2085,2086,1135,1136,1167,1150,1149,4755,4757,1134,2089,2091,4731] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2510,2511,2512,2414,2417,1181,1218,1220,1499,1498,1265,1505,1508,1145,1147,1148,2415,2446,2424,2428,2431] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [4738,4790,4664,1889,4654,1890,4649,4640,1907,1908,1911,1913,1915,1847,4834,4803,4833,1850,1849,4642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3147,4270,2787,2789,2790,4284,3158,4380,4381,3194,4375,3146,4382,2775,2776,4379,4397,4398] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        