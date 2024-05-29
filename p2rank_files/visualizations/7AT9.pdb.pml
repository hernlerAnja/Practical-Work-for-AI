
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
        
        load "data/7AT9.pdb", protein
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
 
        load "data/7AT9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4018,3899,3901,3903,2206,4016,4017,2278,2282,3969,3967,2752,2065,2042,2069,2070,2072,2068,2204,2074,2075,2130,2185,2186,2200,2031,2826,2781,2779,2833,2342,2343,2344,2735,2736,2780,2734,3839,2368,2362,2361,2366,2347] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2749,3021,2748,2804,2032,2029,1995,3018,3020,1946,3033,1650,1651,1652,1941,1944,1959,2716,2717,2768,3037,3038,3040,1164,3034,774,779,755,756,757,773,759,760,1979,889,891,1129,1163,1128,1162,1943,1945,1130,781,782,803,858,804] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2717,2768,2687,2688,3038,3040,3082,3039,3081,3071,3076,781,782,803,858,804,810,832,839,841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [378,400,405,385,387,428,3121,426,3119,3183,3184,3185,3224,3139,3225] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1362,1882,492,496,512,513,1363,1773,1774,1297,1298,1295,1380,1383,540,543] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1204,835,1361,858,1336,832,836,839,1163,3040,3039,3081,1164,3070,3071,3076,1342,1428,1337] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2553,116,144,3655,3665,3668,80,115,5532,5533,5534,90,93,114,86,3682,5542,3686,5529,5403,5556,2509] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        