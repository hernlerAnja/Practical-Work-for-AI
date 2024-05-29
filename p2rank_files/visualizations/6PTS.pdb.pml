
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
        
        load "data/6PTS.pdb", protein
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
 
        load "data/6PTS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6185,6186,5916,5918,5959,6184,6187,5984,5985,5986,6144,6147,5983,5896,5897,6002,6108,6109,6183,6207,6591,6252,6119,6155,6117,6106,6107,6077,6226,6641,6648,6651,6652,6653,6656,5923,5925,5926,6550,6567,6590,6568,6569,6570,6081,5934,5931,4212,4221,4222,4223,6182,6134,6963,4396,4400,4384,4385,4386,6960,4381,4382,5956,5941,5943] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4105,4556,4109,4113,4114,4115,4126,4127,4131,4297,4299,4138,4139,4298,4144,4148,4152,4313,4316,4319,4322,4149,4324,4555,4560,4563,4564,4156,4268,4265,4271,4272,4273,4295,4282,4303,4306,4307,4259,4260,5423,4276,5166,5167,5165,5411,5415,4258,5417,5421,5135,5137,5138,4116,5124,5125,5126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4266,4267,4282,4306,4307,4310,4374,4183,6177,6132,6133,4284,4285,6136,6134,5983,5896,6002,6186,5984,5985,5986,6144,6147,6143,4268,4149,4354,4324,4325,4148] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [5488,5527,4401,4402,4403,4425,4203,4411,4431,6929,6729,6730,6731,4234,6946,6948,6950,6941,6762,6763,5486,5487] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [7128,4015,4016,4416,7140,7143,4009,4014,7130,7131,7136,7139,4475,6975,6976,6978,6979,4474,4415,6960,6970,6971,7126,7122,7123,7124,7125,6651,6652,6653,6959,6961,6966,6988,7106,7115,6829] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [7043,7044,7045,7047,7081,7082,6832,6835,6838,6843,6850,7083,6854,6855,6856,7024,7022,7056,6836,7026,7025,6889,6891,6866] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4167,4164,4162,4134,4172,4770,5514,5515,4754,4086,5112,5503] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [502,505,545,570,573,575,3267,3268,3269,3270,3271,3272,3248] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [7010,7011,7013,6696,6984,7118,6698,6674,7062,7054,7059,7061] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [5354,4889,5335,5337,4892,4897,4893,4898,4934,4935,5087] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4546,4637,4544,4100,4924,4093,4094,4097] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        