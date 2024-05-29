
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
        
        load "data/6GZM.pdb", protein
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
 
        load "data/6GZM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [299,798,197,796,195,196,140,138,194,135,136,137,141,142,143,145,1261,1375,1378,1379,1383,1380,1384,1386,148,149,155,329,333,470,216,217,139,2747,830,832,2727,872,908,2656,907,2657,880,882,1248,1250,1251,1252,1253,834,840,856,1280,1281,846,2915,2866,2912,2723,2739,2742,2733,2860,2851,2852,2853,2854,2856,2858,2859] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3327,3328,3329,3330,3336,3340,3716,3747,2767,2773,2774,2776,2780,3364,3366,3341,3365,3727,3299,3841,3843,3844,3746,2835,3298,2834,2836,2942,2944,3845,3846,3849,3850,3852,227,228,258,275,3320,256,90,2768,2770,268,272,2855,2927,2771,3315,3317] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [5060,5074,247,248,249,250,267,251,253,254,3768,3771,5072,5076,5078,5065,3752,3759,3791,3792,3793,3794,3798] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1036,1042,2552,2553,2554,2461,2464,2525,2531,2533,1030,2459,2431,2432,2433,2434,1038,1060,1061,1063,2435] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [4103,4105,4092,4093,4098,4102,4106,4400,4396,4404,4478,4476,4479,4528,4384,4387,4097,4493] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        