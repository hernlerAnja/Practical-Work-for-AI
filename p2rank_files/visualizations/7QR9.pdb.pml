
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
        
        load "data/7QR9.pdb", protein
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
 
        load "data/7QR9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3380,2970,2965,3379,3381,3477,2813,2945,2487,2607,2500,2501,2502,2503,2941,2938,2939,2940,3483,3480,3475,3478,3479,2710,2712,2711,2926,2746,2609,2611,2468,2467,2594,2959,2962,2982,3350,2480,2481,2473,2471,2472] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1116,1019,1115,564,579,576,577,138,139,140,141,245,247,110,232,583,597,600,620,1018,111,115,117,121,451,603,608,1017,1121,249,348,349,350,384,1117,1118,1113,988] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [7135,7153,7154,7155,7246,7244,7124,7125,8135,8136,7398,8131,8132,7364,7397,7263,7261,7255,7259,7590,7597,7245,7396,7591,7593,7574,7577,8002,8032,8130,7660,8031,8033,7617,7609,7611,7614,7615,8127,8129,7466] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4856,4858,4859,5737,4948,4950,4963,4959,4949,5295,5294,5321,5315,5319,5301,4857,4829,4828,5313,4831,4832,5834,5839,5835,5831,5833,5836,5840,4965,4967,5101,5102,5068,5297,5281,5278,5735,5736,5318,5706,5364] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4177,8351,8771,8952,8954,8956,8948,8951,8769,8770,8767,8760,8352,8475,8960,4202,4206,4207,4209,4336,4191,3760,3759,4362,3767,3792,4363,4358,8928,4359,4360,4357,8971,4371,4333,8788,8794,8799,8801,8783,8787,8782,3913,8359,8360,4195,4196,8384,4190] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [6505,6632,6656,6660,6664,6658,1430,6473,6464,6486,6487,2001,1847,1997,1998,1999,1971,1974,6675,1395,1397,1398,2009,1995,1996,2006,2007,2013,1404,1405,1406,1521,6506,6510,6491,6514,6492,6495,6498,6511,1845,6063,1828,1829,1833,1834,1840,6655,1813,1817,1815,6088,1844,6474,6475,6471,6056,6055] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3016,4680,3386,4682,4695,2976,2977,3393,3395,3427,3425,3426,3401,3041,3043] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1024,614,615,1031,1039,1063,1065,2312,2325,1033,2310,654] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        