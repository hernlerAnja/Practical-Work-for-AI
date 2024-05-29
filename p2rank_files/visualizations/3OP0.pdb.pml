
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
        
        load "data/3OP0.pdb", protein
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
 
        load "data/3OP0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1421,1423,1392,1391,1248,1250,1287,1288,1289,1400,3915,1395,1246,1256,1260,1257,3906,3907,3802,3803,3908,3804,3888,3879,3882,3885,3909,3910,3913,3936,3938,3761,3763,3771,3765,3772,3775,1373,1393,1394,1364,1367,1370,1398] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1795,1796,1801,1802,1803,1804,2006,1805,1439,1436,1809,1794,1779,1780,1438,2005,918,919,2011,2004,2021,1463,1563,1432,1611,1600] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4316,4317,4318,4319,4295,4309,4310,4311,4521,3433,3434,4519,4520,4526,3947,4320,3953,3954,3978,4078,4115,4324,4536,4294] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3422,3449,3451,2825,2827,3424,2849,2850,2851,3454,3457,4533,4542,4540,4541,4544,3482,4561,4562,2781,2777,3481,3483,3484] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [907,934,2025,936,909,2027,331,332,333,939,942,967,2029,259,2018,2046,2047,263,307,309,2026] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4044,4106,3489,3607,4042,4072,3486,3456,3581,3583,4541,4556,3482,4559,4560,3449,3451,3454,3457,3484,4104,4079] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [941,942,974,1529,1527,971,1066,1068,967,2045,1589,1591,2044,1557,1092,2041,2026] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2761,2740,2755,3276,2759,4352,4355,3363,3365,3366,2783,4334,4335,3332,3333,3334,3329,3369] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [848,243,265,761,222,237,241,876,850,851,817,818,819,814,854,1819,1820,1837,1840] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4294,4247,4250,3918,3920,3921,4292,3945,3947,3953,4319,4295,4309] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1794,1777,1779,1403,1405,1438,1430,1432,1406,1737,1735,1732] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        