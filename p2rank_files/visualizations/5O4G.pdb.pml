
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
        
        load "data/5O4G.pdb", protein
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
 
        load "data/5O4G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [26,27,30,34,35,36,211,270,271,273,3525,3511,3512,3513,3514,3526,3537,1990,1991,1992,2043,25,28,22,6,20,3529,3304,2049,2065,2076,2074,2050,3303,3073,3075,3099,3305,3306,2143,2144,2075] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [63,3118,95,101,104,107,111,3135,3137,3138,3329,3110,2899,3177,3108,2898,3176,112,115,139,136,137,141,142,147,85] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1697,1701,1702,2001,2000,1739,1737,1738,1736,2006,443,447,258,15,1687,1692,434,1693,437,1681,1682,1773,1757,1758,1759,1667,629,1696] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2140,2156,2186,2207,2192,2195,2589,2161,2183,2174,2863,2587,2590,2371,2373,2398,2407,2150,2151,2155,2173,2582,2354,2355,2356,2332] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [6544,6548,6120,6121,6122,6559,6550,1225,1226,4791,4785,1210,1222,1212,4811,4826,6099,4806,4790,4801,4784,4800,4802,4803] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2385,2456,2631,2878,2613,2877,2879,2897,2632,2895,2387,2388,2429,2449,2383,2382,3091,3096,3111,3109,3107] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1236,4314,4320,4322,4329,4331,4332,4333,1240,1241,1250,1251,1254,6572,6526,6571,4478,4479,4485,4502,6527] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5130,4958,7173,6834,6830,4957,4975,4976,6823,6824,6822,6827,6828,6809,7171] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3579,3421,3423,3610,3565,3568,3573,3420,3422,3424,3570,3617,3616,3618,3397,3584,3585,3586,3587,3588,3595,3591,3408,3412,3415] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [7145,6756,7158,5111,5099,4992,4994] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5138,7016,7017,7172,5374,7035,7036,7023,5397,5137,5387] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        