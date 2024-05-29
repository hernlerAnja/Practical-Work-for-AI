
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
        
        load "data/6NK1.pdb", protein
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
 
        load "data/6NK1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1716,1721,1722,1725,1727,1724,1717,1715,1688,3956,237,238,848,239,1687,303,255,3226,3239,3242,3260,3220,3221,3224,3920,3944,3943,3311,3315,4733,4738,4742,4744,205,233,252,3925,4732,4734,4704,4705,879,884,3262,3227,3924] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [301,302,303,304,305,306,307,1725,1727,1723,1724,1726,3190,3196,1735,1736,1739,1741,6320,6344,3456,6368,6367,3438,3443,3449,3311,3313,3315,3317,3319,6346,3453,3692,3226,3239,3244,3245,3309,3307,3221,3199,3416] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [190,217,79,189,56,57,74,92,148,61,932,936,939,4018,921,935,878,882,895,917,4670,4686,4698,5493,5494,3979,3981,3980,4701,4702] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [6108,384,257,258,4742,4743,4744,4758,203,212,615,4759,6133,397,394,390,6109] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3028,3042,3044,3048,3962,1681,1685,1669,1653,2455,2457,902,904,903,4015,938,940,3972,3994,4009,4013,4012] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4900,5547,4635,4902,5545,4644,4719,4755,4767,4793,4786,4877,4879,4876,4717] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3711,3715,3728,6201,6207,6219,3405,3361,6179,3760,3744,3748,3482,6308,3441,3444] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1618,2505,1627,1643,2507,1859,1836,1838,1738,1750,1769,1700,1702] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        