
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
        
        load "data/6C83.pdb", protein
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
 
        load "data/6C83.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1211,1215,1263,1264,1261,3215,3216,3217,2285,2286,2287,2313,2314,3167,3192,2926,1236,1239,1240,2916,1249,1234,2349,1235,1237,2922,2923,2917,2919,2323,2324,2322,980,982,385,976,968,977,3186,3187,3188,3163] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2975,2976,2987,2172,2173,2171,3079,2010,2016,2052,2041,2597,3003,3004,2614,2623,2570,3086,3069,3070,2575,2593,2053,2156,2011,2013,2014,2596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [102,692,94,1058,683,1057,662,665,666,97,109,1124,1029,257,623,143,145,245,639,131,132,640,499,139,144,133,232,644,1137,1128,364,129] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [123,125,326,327,329,299,1137,1135,1136,362,364,358,257,623,245,248,249,253,254,109,112,354,355,120,127,128,129] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4617,4795,4612,338,305,307,275,4815,4817,4801,4796] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4762,4875,4582,4548,4580,4581,4652,4533,4538,4599,4536] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [342,381,382,3105,3108,3135,383,384,3163,3174,346,3099,350,385,3167] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2234,2235,2236,4415,4417,2268,4401,4402,4053,4056,4055,1139,1138,4403,4418,4404] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        