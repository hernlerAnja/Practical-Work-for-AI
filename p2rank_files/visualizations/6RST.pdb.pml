
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
        
        load "data/6RST.pdb", protein
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
 
        load "data/6RST.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [252,254,255,574,1476,1444,251,268,269,274,350,351,352,605,1493,1458,1490,1494,1495,1527,1526,2305,2306,2267,2304,2527,2541,2542,2543,2526,2528,2536,1133,1445,1538,1589,1537,2262,277,606,607,1533] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3870,3833,3860,3869,6501,3872,3873,1777,1781,3871,3898,4753,5632,3882,3899,3902,5897,5898,5930,5933,6499,6462,6397,6437,6436,6500,3909,3913,5917,5913,4750,5629,5631,5633,4722,6574,6554,4728,4720,4721,4708,4710,4729,4730,4731,4745,5083] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2526,2536,2537,2548,2551,2556,1445,964,966,312,314,606,607,645,844,842,843,915,917,2570,2571,2575,2576,2579,2626,901,898,1406,1444,1172] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1995,1996,1992,1994,2060,2151,2119,2010,2006,2007,2012,2848,4292,4293,4294,4346,4344,2904,2889,2892,4361] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3773,3821,3037,3178,3585,3586,3740,3605,3817,3820,3790,3091,3851,3111] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [558,560,503,1195,1191,1193,117,116,444,442,446,1189,1187,1209,1188] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        