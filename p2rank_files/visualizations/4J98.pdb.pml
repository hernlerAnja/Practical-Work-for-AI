
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
        
        load "data/4J98.pdb", protein
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
 
        load "data/4J98.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2630,2631,2633,2632,2642,2643,2667,2644,2645,2651,2662,2664,2665,2832,2655,2658,2933,2679,2680,2681,2830,2624,2625,2627,2628,3707,3738,3743,3744,3843,2963,3835,3836,3837,3840,3841,3842,3856,3857,3864,3859,3236,3240,3243,3729,3758,3759,3233,2816,3189,3190,3206,3208,3212,3215,3194,3076,2646,2650,4005,4007,251,461,3732,3733,457,4023,4024,473,3866,4003,4002,3865] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1339,803,1338,1415,404,799,660,777,781,420,1421,1422,1423,551,1416,271,273,272,418,419,222,223,225,823,827,830,1309,220,820,802,217,219,216] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [238,243,245,247,250,252,254,246,255,521,1446,1583,1585,1587,1444,1445,1582,2649,242,253,2885,256,257,234,235,1312,1313,1324,2871,2872,2873,1323,1287,2869,1603,1604,419,550,1436,517,522,523,526,528,436,495,518,516,258,424,273,420,1419,1420,1421,1422,1423,1439,1435,2910,2911] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3972,3996,3697,3952,3953,3973,3978,3979,3866,3999,3970,4006,4007,2902,2903,3879,3880,2954,2932,2925,2923,2953] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [4713,3637,4706,4703,4717,4721,4170,4157,4705,4160] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        