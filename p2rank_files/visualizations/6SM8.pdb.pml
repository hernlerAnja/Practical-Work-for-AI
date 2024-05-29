
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
        
        load "data/6SM8.pdb", protein
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
 
        load "data/6SM8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2625,2627,2617,2618,2624,3643,3750,3751,3752,3753,2824,2612,2613,2615,2616,2605,2606,2611,2668,2666,3265,3267,3621,2607,2610,2609,2667,2808,3744,3745,3657,3658,3659,3743,3189,3190,3233,3236,3240,3241,3266,3232,3211,3214,3194,3208,3222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [258,259,1215,1229,1328,1322,1323,854,855,256,257,253,254,246,247,248,252,879,881,880,309,804,1329,1330,1331,307,308,808,825,1243,1244,1321,250,251,822,1245,847,850,828,803,440,265,266] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4443,4452,4476,2044,4020,4021,2011,1613,1614,1615,2069,1612,4418,2036] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2625,2627,2617,2618,2624,3643,3751,3752,3753,2824,3766,2652,2650,2651,2646,2822,3627,3596,3774,3631,2632,2633,2635,2637,2648,3776] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2634,2645,2647,3895,3891,3892,3775,3776,3583,2890,2881,2917,2918,2919,2920,3791,3792,3862,3768,3770] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [268,293,277,265,266,275,287,289,258,259,1229,454,456,1329,1330,1331,292,1352,1219,1192,1193,1344] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1455,533,1369,1370,1488,1484,1183,1354,1486,1485,1346,1348,288,531,532,534] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        