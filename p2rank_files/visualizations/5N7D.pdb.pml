
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
        
        load "data/5N7D.pdb", protein
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
 
        load "data/5N7D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5265,5290,5474,5404,5232,5255,1947,1948,1945,1946,5439,5403,5257,1997,2011,2012,5433,5464,5465,1998,1999,1971,5432,5233,2331,2338,2304,2305,2308,2339,2340,5405,1977,2300,2302,1944,2267,2269,2270,2271,1976,2330] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3693,3774,3791,3792,3795,3816,3818,3788,3789,3513,3514,3516,3572,3498,3500,3510,3495,3504,3775,3568,3772,3759,3769,3740,3790,3712,3743,3519,3520,3690,3692] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3883,3872,3873,3436,3437,3435,3580,3899,3900,3502,3656,3499,3501,3627,3447,3443,3446,3862,3450,3453,3454,3487,3460,3461,3812,3841,3842,3693,3817,3815] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [5350,5352,5314,5349,5342,5348,2281,5318,5343,5382,2308,2309,5405,2164,2315,2165,2108,2141,2131,2166,2350,5315,5286,5323,5402,5289,5404] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3919,3390,3700,3750,3357,3393,3909,3394,3563,3343,3344,3354,3751,3683,3684,3905] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4812,4797,4806,4809,4811,5858,5489,5488,5857,5822,5830,4785,5487,5496,5170,5171,5145,5146,5153,5147,5801,4817,4818,4819] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2363,2364,2365,2706,1643,2699,2697,2698,2702,2701,1664,1667,1669,2734,1655,2733,1670,1676,1677,2022,2019,2020,2021] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [744,745,746,458,860,750,751,1137,1142,1145,879,875,876,453,1173,452,454,1132,1172,1130] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        