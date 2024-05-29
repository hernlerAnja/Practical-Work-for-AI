
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
        
        load "data/5LMB.pdb", protein
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
 
        load "data/5LMB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [171,154,155,173,317,319,320,321,152,149,357,657,640,654,305,172,636,1080,1168,1169,1170,121,651,1028,1029,1370,1191,1192,1193,1344,413,1182,516,635,1183,412,1185,382,379,686,1081,685,1051,1055,130,124,127,677,118,119] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2306,2308,2309,2312,2358,2359,2360,2304,2311,2314,2305,3280,3383,3384,2317,3385,3266,3295,3296,2910,2911,2902,2882,2879,2497,2499,2638,3379,2860,2861,2483,3376,2741,2865] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3243,3244,3280,2317,2339,2341,3385,3271,3269,3270,2328,2332,3538,3539,3401,3381,3382,3397,3398,3399,2499,3406,3408,2582,2607,2336,3400,2637,2602,2604] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3592,3595,3596,3625,4160,1101,1103,1104,1108,3622,3623,675,673,674,4163,4156,4158,3635,1111,1110,1112,785,3599,4175,3633,3658,3631,3634,3636] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [249,3997,4000,4001,4004,251,252,3856,3857,3889,3868,3781,3843,260,3945] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4149,4148,189,191,85,101,84,100,653,122,187,4121,4162,4166,662,666,4190,4191,103,4192,4193,4189] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        