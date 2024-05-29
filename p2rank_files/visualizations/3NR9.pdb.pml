
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
        
        load "data/3NR9.pdb", protein
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
 
        load "data/3NR9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1284,905,932,1285,1286,1272,1273,306,1296,1489,450,452,1487,1490,1494,1497,1312,857,858,867,860,862,1488,1313,900,892,901,863,270,271,272,329,330,435,269,273,275,276,280,308,278,281,879,881,883,884] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3695,3702,3706,4114,4085,4097,4339,3127,4341,4347,3125,3265,3693,3688,4113,3682,3668,3519,3520,4337,4338,4340,3263,3658,3659,3661,3663,3664,3381,3685,3733,3091,3088,3089,3147,3148,3149,3248,3097,3094,3095,3099,3100,3107] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [5922,5923,5924,6038,6040,5900,5902,6443,6444,5863,5869,5870,5871,5864,5867,5874,5875,5881,5882,5898,7126,7128,7129,6873,7133,7134,7136,7127,6482,6486,6513,6861,6890,6889,6862,7144,6481,6475,5866,6460,6465,6023,6473,6464,6299,6438,6439,6441,6448,6442] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [451,452,1254,1256,304,1496,1497,296,1255,1518,1273,1628,577,545,1510,291,297,517,519,302,468,514,512,515,505] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3115,4478,4055,4056,4057,4086,4074,4073,4097,4346,4347,3123,3125,3264,3265,4368,4360,4361,4362,4364,3352,3354,3380,3326,3328,3121,3281,3323,3356,3314,3355] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [6831,6832,6833,6849,6850,7267,6873,7135,7136,5896,5898,5885,5890,5891,6040,5900,7150,6098,6129,6103,6096,6101,6056,6161,6127,6128,6130,7149,7157] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1271,1288,1289,1629,922,924,1660,1661,1869,1922,1648,1650,1921,1949,1950,993] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4761,4769,5207,5225,5226,5272,5274,5217,4763,4765,4776,5208,5210,4878,4796,4795,5174] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4089,4090,4498,4510,4511,4772,4479,3721,3723,3725,3794,4719,4500] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [7299,7300,7561,6864,6865,6866,7287,7289,7268,7555,6574,7508,6501,7588,6503,6505,7545] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [8099,6606,6612,7527,7529,7524,7012,8100,6986,6596,7002,7003,6618,8098,8147] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        