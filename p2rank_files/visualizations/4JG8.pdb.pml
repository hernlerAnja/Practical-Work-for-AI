
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
        
        load "data/4JG8.pdb", protein
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
 
        load "data/4JG8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2344,2345,2346,2007,2386,2388,2038,2039,2387,532,738,2372,2373,2374,287,530,531,1235,180,193,194,195,196,502,179,181,216,257,258,259,260,234,217,218,223,2006,2339,2340,2343,2084,2351,2070,2332,2333,969,1283,1284,2116,2117,2118,1282,1326,1327,1266,4669] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2874,3869,3900,3951,2876,2966,2875,2967,2969,2970,2972,3442,3872,3438,3439,4650,4645,4646,2936,2924,1977,1978,1979,2000,2973,2990,4607,4609,4649,4647,1980,1983,4668,4669,2920,2968,2971,2919,2001,2012] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2844,2845,1878,1876,1877,2609,2610,2910,2947,1880,2903,2909,2849,2846,3987,3990,3991,3992,2913,2860,2862,2859] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3526,3527,3566,3206,3253,3172,4411,4412,3173,3174,3175,3177,3583,3585,3587,3176,3178] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1489,1620,1488,2207,2208,2231,2232,2206,1426,1659,1613,1671,1548,1614,1401,2139,2140,1424] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        