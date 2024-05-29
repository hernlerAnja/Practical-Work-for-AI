
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
        
        load "data/8GM4.pdb", protein
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
 
        load "data/8GM4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [748,1263,551,732,733,746,493,734,1696,1701,1323,1324,1645,1322,530,1704,1319,1291,1320,1280,1282,1289,1340,1318,1321,1306,495,490,492,529,500,509,510,496,498,501,1342] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [725,598,608,314,293,612,613,617,621,625,1112,3830,1115,3835,3836,3841,3842,312,3831,3832,1250,1256,1110,1271,1273,3824,3771,3776,626,628,3779,3780,3782,627,631,4141,629,3783,3807,3778,3811,3844,291,1129] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [711,3820,708,712,713,1281,157,1301,715,145,149,150,158,700,1277,1298,3819,133,108,3948,136,3956,703,706,707,3777,3778,3786,3787,3792,3791,3779,3753,696,3924,109] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1708,1719,883,909,881,882,884,1123,1702,1703,532,533,1704,1646,1700,1701,1645,880,1374,1375,1376,1627,1628,1629,1796,1800,1804,1805,769,843,770,1793,523,517,522,1367,1341,1342,513,510] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [958,947,948,949,984,985,927,3840,348,3854,1114,3836,3851,3853,3855,4120,4108,334,335,346,337,923,320,336] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [861,862,863,864,865,866,867,377,900,376,374,375,373,302,397,304,398] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2943,3259,2970,2971,2972,3289,3166,3257,3168,3287,3288,2999,3215,3267,3268] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        