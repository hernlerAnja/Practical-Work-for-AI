
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
        
        load "data/4FIF.pdb", protein
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
 
        load "data/4FIF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3511,3621,3520,2605,3514,3499,3500,2612,2613,2615,4760,4761,4769,4750,2644,2646,2750,2604,2611,3535,3536,3510,3614,3620,3622,3171,2735,2645,3142,3143,3147,3007,3213,3189,3193,3214,3216,4644,124,125,2592,2593,2597,2598,2599,2600,2602,3186,3175,3183,3184,3159,3164,3167,4642,3619,3617,3618,3634,3483,3645,3647,2751,2897,2620] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [291,292,416,562,1310,1312,276,277,280,286,258,264,267,269,270,4710,284,4702,1299,1282,1283,1284,1279,1286,1285,1287,1200,832,1201,851,850,829,840,1175,1185,1148,1164,1165,1176,1179,4692,4711,4701,858,878,879,854,881,311,414,415,309,310,265,808,262,400,824,812,826] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [2892,3126,2751,2896,3623,3627,2927,3630,3127,3143,3614,2749,3621] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [561,592,1288,1286,807,808,557,792,414] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        