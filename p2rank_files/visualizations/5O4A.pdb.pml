
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
        
        load "data/5O4A.pdb", protein
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
 
        load "data/5O4A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1244,480,360,361,362,1245,478,479,588,590,1237,1238,1257,711,729,707,346,216,215,217,167,169,1160,732,1161,165,166,172,174,691,358,706,512,1145,750] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3443,3444,2423,2470,2469,2471,2607,2611,2424,2421,2981,2988,3006,2846,3516,3534,3535,3517,2733,3523,3524,3414,3009,2585,2586,2587,2603,2590,2595,2766,2962,2963,2765,2947,2967] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3887,1855,1856,1857,1858,3944,3971,3972,3955,3969,3888,3941,3884,4109,4112,4106,4107,4102,4105,3960,4124,4117,1629,1626,1847,1848,1851,1854,1844,1713,1714,1696,1697,1725,1686,1666,4113,4088,4089,1862,1869] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2002,2004,1601,1568,1705,1407,1571,1430,1799,1833,1848,1843,1706] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4106,4108,4101,3963,3964,4083,4022,4059,4058,3859,4249,3657,3659,3682,3826,3652,4096,4247,3829] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1346,1388,1370,1412,1716,1717,1719,1722,4013,4014,4015,1721,1726,1727,1730,1709,1715,4051,4042,4043,4074,1688] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3898,3405,3411,3415,3416,3417,3419,3615,3601,3602,3030,3031,3032,3676,3629,3627] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        