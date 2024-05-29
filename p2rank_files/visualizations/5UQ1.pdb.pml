
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
        
        load "data/5UQ1.pdb", protein
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
 
        load "data/5UQ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4471,4454,4494,4495,4606,4585,4591,4602,4603,4581,4586,4589,4584,4130,4129,4482,4511,4582,4510,4099,4096,4079,3799,4612,3521,3524,3527,3574,3522,3556,3552,3554,3555,3557,3551,3553,3694,3692,3576,3690,3575,3677,4091,4093,3800,3834,3863,3937,4072,4074,3833,4069,4070,4071,4073,4075,4155,4156] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1571,1572,3737,1578,1579,1595,1601,3736,1603,3735,1629,3750,3751,3752,3754,1573,4726,6360,6361,6362,3801,6282,6386,6280,6394,6396,6398,6393,6397,6424,6426,3761,6533,6535,6568,6534,6392,6495,6494,3786,3778,3789,3793,3794,3738,6569,6358,6387] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [5078,5094,5097,5100,5128,5130,250,5131,251,235,291,2811,2916,3098,3062,3064,3097,3063,2889,2890,2887,2891,3031,2926,2927,2921,2922,2923,2925,2953,2955,3024,3029,223,233,222,232,5102,234,5070,5071,5072,275,280,283,284,286,212,5077] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [103,105,122,124,189,563,558,561,559,560,562,69,70,72,123,174,104,191,331,1003,1005,1004,568,588,605,612,618,596,604,976,988,1081,1082,1083,1076,1077,1078,434] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1303,1340,1341,1345,1354,1782,1746,1749,2089,2096,2097,2095,1759,1760,2105,2104,1307,1790,1761,1762] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3713,3700,3701,3703,4029,3712,1524,1525,1526,3535,3569,3720,1560,3716,3717,3719,1640,1641,4016,4027,1534] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [83,117,5023,5025,197,198,199,200,195,5026,5027,213,214,216,217,226,509] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1105,99,102,1084,296,298,1097,1098,297,93,948,1106,963,988,1083,1107,965] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4146,4147,4768,4145,4487,4766,4984,78,81,82] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5187,5179,5431,5412,5413,5430] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [6116,6117,6118,6147,6194,5795,5796,6111,6113,6136,6078,6115] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        