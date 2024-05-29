
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
        
        load "data/7URZ.pdb", protein
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
 
        load "data/7URZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2271,2274,2019,2170,2084,2879,2885,2020,2082,1993,2846,2862,2698,2843,2845,2714,2183,2306,2882,2896,2892,2316,2317,2319,2320,2017,2903,2891,2564,1997] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1237,1241,1345,1871,1872,1873,1874,1248,1254,1890,1090,1440,1612,1613,1098,1595,1596,1091,1153,1155,1746,1593,1729,1730,1712,1375,1376,1377,1372,1374,1256,1382,1088,1387,1388,1389,1390,1391,1392,1373,1383] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [635,104,126,100,127,785,916,917,189,426,427,428,423,424,425,191,768,124,956,933,273,276,410,967,375,378,381,413,377,962,958,959,963,964,965,408,409,418,419] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3895,3897,3898,3902,3707,3872,3574,3724,3856,3035,3036,3098,3007,3126,3827,3906,3286,3319,3322,3290,3185,3853,3855,3336,3889,3199,3009,3013,3008] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1345,1868,1869,1871,1845,1155,1746] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        