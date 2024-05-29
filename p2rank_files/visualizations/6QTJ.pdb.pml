
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
        
        load "data/6QTJ.pdb", protein
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
 
        load "data/6QTJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [273,270,272,274,1233,234,239,245,883,439,539,1368,437,798,800,795,796,294,295,296,435,422,237,1256,1257,824,1258,850,852,2693,2694,2692,644,1361,645,804,643,1241,1234,851,865] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1406,1441,1429,1430,1405,1228,1229,1442,1656,1700,1701,901,902,937,867,869,870,872,1220,1221,1234,864] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4045,4049,4050,4075,4085,4087,4356,4350,4351,4352,4357,4358,4359,4360,2773,4361,4362,4038,4008,4051,4349,4002,2742,2750,4000,2755,2756,2751,2768,2770,2771,4005,3997] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2942,3046,3052,3053,3016,3056,3018,4282,4288,4293,4295,4273,4285,2879,4324,4727,3057,3058,4690,4728,4664,2881] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3447,3449,3448,3749,3751,4889,4890,4875,3795,3796,3433,3434,3435,4849,4828,4847,4848,3741,3744,3747] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1975,1978,1471,1472,2404,1956,2011,1999,2000,2412,2397,2403,1974,1548,1505,1508] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1944,1945,1912,1947,1892,1899,1891,2348,2349,2387,2388,2371,2377,2383,1895,2176,2382,2347] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2729,3984,4042,3250,3551,3552,3989,3550,2726,3985,3546,3547,3558,3540,3545] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [666,667,677,414,338,380,416,339,340,170,675,676,789,181] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        