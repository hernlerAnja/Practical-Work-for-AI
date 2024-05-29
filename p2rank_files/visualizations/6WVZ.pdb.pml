
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
        
        load "data/6WVZ.pdb", protein
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
 
        load "data/6WVZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3563,3553,3578,3886,3564,4411,4408,3891,3890,3897,4150,4151,4172,4416,4423,4137,4426,3887,3893,3908,3598,3889,4086,4089,3589,4095,754,4128,4130,4136,3591,752,753,759,760,4076,4078,3587,4092,4096,4097,4143] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3599,3920,3923,4058,3501,3921,3922,3592,3593,3596,3597,3889,3907,3891,3532,3890,3892,3727,3509,3506,3512,3600,3608,3584,3604] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4757,6488,4758,5237,5245,4237,4762,5251,3282,6515,6501,6504,6507,5247,3271,6498,6493,6499,3273,4222,4223,4227] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [5064,5067,5068,5885,5887,5882,5883,5856,5859,5852,5855,5088,5652,5940,5941,5935,5936,5894,5897,5898,5901,5860,5914,5937] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3923,3921,3922,3889,3905,3907,3532,3892,3727,3530,3509,3511,3518,3868,3869,3512,3881] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5088,5652,5706,5638,5675,5676,5883,5859,5855,5986] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4099,4100,1960,4114,1987,4113,4083,1979,1982,1983,4507,4540,4558,4546,1975,1977] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1257,1259,1260,899,900,1283,678,679,891,292,293,294,872,886,680,1084,1303,1304,1101] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4443,4444,4423,4137,4425,4149,4141,4144,4145,4146,4157,4570,4566,4568,4617,4619,4618] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        